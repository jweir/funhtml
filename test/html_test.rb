# frozen_string_literal: true

require './lib/html'
require 'minitest/autorun'
require 'minitest/spec'

class HtmlTest < Minitest::Test
  extend Minitest::Spec::DSL

  Item = Struct.new(:name)
  A = Html::Attribute

  class X < Html::Template
    def call(item, content: nil)
      h1(A.new do
           id('big')
           klass('a "b" c')
         end) do
        text(item.name)
        br
        b { text('Hello & good "byte"') }
        include(content) if content
      end
    end
  end

  class Y < Html::Template
    def call(item)
      div(attr { id('ok') }) { text item.name }
      include(Z.new.call)
    end
  end

  class Z < Html::Template
    def initialize
      @value = 'Z'
      super
    end

    def call
      h1 { text @value }
    end
  end

  specify 'comments supported' do
    assert_equal '<p><!--no comment--></p>', Html::Template.new.p { comment { text 'no comment' } }.render
    assert_equal '<p><!----></p>', Html::Template.new.p { comment }.render, 'empty comment'
  end

  specify 'include can take a template' do
    result = Y.new.call(Item.new('Joe'))
    assert_equal result.render, '<div id="ok">Joe</div><h1>Z</h1>'
  end

  def test_html
    assert_equal \
      '<h1 id="big" class="a &quot;b&quot; c">ITEM<br/><b>Hello &amp; good &quot;byte&quot;</b></h1>',
      X.new.call(Item.new('ITEM')).render
  end

  def test_whitespace
    t = Html::Template.new.html do
      text(
        <<~TXT
          Hello,

          My name is Joe.
          Bye.
        TXT
      )
    end

    assert_equal "<html>Hello,\n\nMy name is Joe.\nBye.\n</html>", t.render
  end

  def test_doctype
    assert_equal '<!DOCTYPE html>', Html::Template.new.doctype.render
  end

  def test_html_appending_and_binding
    t = Html::Template.new
    value = 'ok' # this would be bound to the block
    @value = 'not_present' # this should not be bound
    t.h1 { b { text(value) } }
    t.span { text(@value) }
    assert_equal '<h1><b>ok</b></h1><span></span>', t.render
  end

  def test_without_a_block
    assert_equal \
      '<title title="Ok"/>',
      Html::Template.new.title(A.new { title 'Ok' }).render
  end

  def test_html_with_extension
    assert_equal \
      '<h1 id="big" class="a &quot;b&quot; c">ITEM<br/><b>Hello &amp; good &quot;byte&quot;</b><b>ok</b></h1>',
      X.new.call(Item.new('ITEM'), content: -> { b { text 'ok' } }).render
  end

  def test_text_html_is_escaped
    t = Html::Template.new
    assert_equal '&lt;script&gt;x&lt;/script&gt;', t.text('<script>x</script>').render
  end

  def test_attribute
    a = Html::Attribute.new do
      klass('ok')
      id('1')
    end

    b = Html::Attribute.new { name('foo') }

    c = a.merge(b)

    assert_equal 'class="ok" id="1"', a.safe_attribute.strip
    assert_equal 'name="foo"', b.safe_attribute.strip
    assert_equal 'class="ok" id="1" name="foo"', c.safe_attribute.strip
  end

  specify 'attributes do not allow attributes to defined more than once' do
    a = Html::Attribute.new do
      id('one')
      name('ok')
      id('"two"')
    end
    c = a.merge(Html::Attribute.new { id('three') })
    assert_equal ' id="&quot;two&quot;" name="ok"', a.safe_attribute
    assert_equal ' id="three" name="ok"', c.safe_attribute
  end

  specify 'support valueless attribtes' do
    a = Html::Attribute.new { disabled }
    b = a.merge(Html::Attribute.new { disabled(false) })
    assert_equal ' disabled', a.safe_attribute
    assert_equal '', b.safe_attribute
  end

  def test_thread_safety
    100.times do
      thread_safety
    end
  end

  def thread_safety
    # This will store the outputs generated by each thread
    outputs = []

    # Create a number of threads and generate HTML in each one
    threads = 5.times.map do |n|
      Thread.new do
        outputs << Html::Attribute.new do
          sleep 0.01 if [1].include?(n)
          id n.to_s
          klass n.to_s
          rel n.to_s
        end
      end
    end

    # Wait for all threads to complete
    threads.each(&:join)

    expected = <<~STYLE
      id="0" class="0" rel="0"
      id="1" class="1" rel="1"
      id="2" class="2" rel="2"
      id="3" class="3" rel="3"
      id="4" class="4" rel="4"
    STYLE

    assert_equal expected.strip, outputs.map(&:safe_attribute).sort.map(&:strip).join("\n").strip
  end
end

# set of OpenAI generated tests
class HtmlTemplateTest < Minitest::Test
  A = Html::Attribute
  def setup
    @template = Html::Template.new
  end

  def test_text_sanitization
    unsafe_string = "<script>alert('XSS');</script>"
    @template.text(unsafe_string)
    assert_equal '&lt;script&gt;alert(&#39;XSS&#39;);&lt;/script&gt;', @template.render
  end

  def test_void_elements
    r = Html::Template.new.html do
      br
      hr
      img(A.new { href '/image' })
    end

    assert_equal '<html><br/><hr/><img href="/image"/></html>', r.render
  end

  def test_html_node_creation
    @template.html do
      head do
        title { text 'My Page Title' }
      end
      body do
        h1 { text 'Heading' }
        p { text 'This is a paragraph.' }
      end
    end
    expected_output = '<html><head><title>My Page Title</title></head><body><h1>Heading</h1><p>This is a paragraph.</p></body></html>'
    assert_equal expected_output, @template.render
  end

  def test_attribute_sanitization
    @template.a(A.new { href "javascript:alert('XSS')" }) { text 'Click me' }
    assert_match(/href="javascript:alert\(&#39;XSS&#39;\)"/, @template.render)
  end

  def test_attribute_quoting
    @template.p(A.new { klass 'class"with"quotes' }) { text 'Test' }
    assert_match(/class="class&quot;with&quot;quotes"/, @template.render)
  end

  def test_self_closing_tags
    @template.img(A.new { src('image.png') && alt('An image') })
    assert_match(%r{<img src="image.png" alt="An image"/>}, @template.render)
  end

  def test_invalid_html_escaping
    @template.text('<html><body>Invalid HTML</body></html>')
    assert_equal '&lt;html&gt;&lt;body&gt;Invalid HTML&lt;/body&gt;&lt;/html&gt;', @template.render
  end

  def test_script_tag_escaping
    @template.script { text "console.log('Hello, World!');" }
    assert_equal '<script>console.log(&#39;Hello, World!&#39;);</script>', @template.render
  end

  def test_only_allows_attributes
    assert_raises do
      @template.p(klass: 'my-class') { text 'Test' }
      @template.render
    end
  end

  def test_attribute_method_aliasing
    @template.p(A.new { klass 'my-class' }) { text 'Test' }
    assert_match(/class="my-class"/, @template.render)
  end

  def test_html_structure
    @template.html do
      body do
        div(A.new { id 'main' }) do
          p { text 'Nested content' }
        end
      end
    end
    expected_structure = '<html><body><div id="main"><p>Nested content</p></div></body></html>'
    assert_equal expected_structure, @template.render
  end
end
