# frozen_string_literal: true

module FunHtml
  # HTML nodes autogenerated, do not edit
  module NodeDefinitions
    module HTMLHtmlElement
      def html(attributes = nil, &elements)
        write('<html', '</html>', attributes, &elements)
      end
    end

    module HTMLHeadElement
      def head(attributes = nil, &elements)
        write('<head', '</head>', attributes, &elements)
      end
    end

    module HTMLTitleElement
      def title(attributes = nil, &elements)
        write('<title', '</title>', attributes, &elements)
      end
    end

    module HTMLBaseElement
      def base(attributes = nil)
        # no child elements allowed and no closing tag
        write('<base', '>', attributes)
      end
    end

    module HTMLLinkElement
      def link(attributes = nil)
        # no child elements allowed and no closing tag
        write('<link', '>', attributes)
      end
    end

    module HTMLMetaElement
      def meta(attributes = nil)
        # no child elements allowed and no closing tag
        write('<meta', '>', attributes)
      end
    end

    module HTMLStyleElement
      def style(attributes = nil, &elements)
        write('<style', '</style>', attributes, &elements)
      end
    end

    module HTMLBodyElement
      def body(attributes = nil, &elements)
        write('<body', '</body>', attributes, &elements)
      end
    end

    module HTMLElement
      def article(attributes = nil, &elements)
        write('<article', '</article>', attributes, &elements)
      end

      def section(attributes = nil, &elements)
        write('<section', '</section>', attributes, &elements)
      end

      def nav(attributes = nil, &elements)
        write('<nav', '</nav>', attributes, &elements)
      end

      def aside(attributes = nil, &elements)
        write('<aside', '</aside>', attributes, &elements)
      end

      def hgroup(attributes = nil, &elements)
        write('<hgroup', '</hgroup>', attributes, &elements)
      end

      def header(attributes = nil, &elements)
        write('<header', '</header>', attributes, &elements)
      end

      def footer(attributes = nil, &elements)
        write('<footer', '</footer>', attributes, &elements)
      end

      def address(attributes = nil, &elements)
        write('<address', '</address>', attributes, &elements)
      end

      def dt(attributes = nil, &elements)
        write('<dt', '</dt>', attributes, &elements)
      end

      def dd(attributes = nil, &elements)
        write('<dd', '</dd>', attributes, &elements)
      end

      def figure(attributes = nil, &elements)
        write('<figure', '</figure>', attributes, &elements)
      end

      def figcaption(attributes = nil, &elements)
        write('<figcaption', '</figcaption>', attributes, &elements)
      end

      def main(attributes = nil, &elements)
        write('<main', '</main>', attributes, &elements)
      end

      def search(attributes = nil, &elements)
        write('<search', '</search>', attributes, &elements)
      end

      def em(attributes = nil, &elements)
        write('<em', '</em>', attributes, &elements)
      end

      def strong(attributes = nil, &elements)
        write('<strong', '</strong>', attributes, &elements)
      end

      def small(attributes = nil, &elements)
        write('<small', '</small>', attributes, &elements)
      end

      def s(attributes = nil, &elements)
        write('<s', '</s>', attributes, &elements)
      end

      def cite(attributes = nil, &elements)
        write('<cite', '</cite>', attributes, &elements)
      end

      def dfn(attributes = nil, &elements)
        write('<dfn', '</dfn>', attributes, &elements)
      end

      def abbr(attributes = nil, &elements)
        write('<abbr', '</abbr>', attributes, &elements)
      end

      def ruby(attributes = nil, &elements)
        write('<ruby', '</ruby>', attributes, &elements)
      end

      def rt(attributes = nil, &elements)
        write('<rt', '</rt>', attributes, &elements)
      end

      def rp(attributes = nil, &elements)
        write('<rp', '</rp>', attributes, &elements)
      end

      def code(attributes = nil, &elements)
        write('<code', '</code>', attributes, &elements)
      end

      def var(attributes = nil, &elements)
        write('<var', '</var>', attributes, &elements)
      end

      def samp(attributes = nil, &elements)
        write('<samp', '</samp>', attributes, &elements)
      end

      def kbd(attributes = nil, &elements)
        write('<kbd', '</kbd>', attributes, &elements)
      end

      def sub(attributes = nil, &elements)
        write('<sub', '</sub>', attributes, &elements)
      end

      def sup(attributes = nil, &elements)
        write('<sup', '</sup>', attributes, &elements)
      end

      def i(attributes = nil, &elements)
        write('<i', '</i>', attributes, &elements)
      end

      def b(attributes = nil, &elements)
        write('<b', '</b>', attributes, &elements)
      end

      def u(attributes = nil, &elements)
        write('<u', '</u>', attributes, &elements)
      end

      def mark(attributes = nil, &elements)
        write('<mark', '</mark>', attributes, &elements)
      end

      def bdi(attributes = nil, &elements)
        write('<bdi', '</bdi>', attributes, &elements)
      end

      def bdo(attributes = nil, &elements)
        write('<bdo', '</bdo>', attributes, &elements)
      end

      def wbr(attributes = nil)
        # no child elements allowed and no closing tag
        write('<wbr', '>', attributes)
      end

      def summary(attributes = nil, &elements)
        write('<summary', '</summary>', attributes, &elements)
      end

      def noscript(attributes = nil, &elements)
        write('<noscript', '</noscript>', attributes, &elements)
      end

      def acronym(attributes = nil, &elements)
        write('<acronym', '</acronym>', attributes, &elements)
      end

      def noframes(attributes = nil, &elements)
        write('<noframes', '</noframes>', attributes, &elements)
      end

      def menuitem(attributes = nil, &elements)
        write('<menuitem', '</menuitem>', attributes, &elements)
      end

      def noembed(attributes = nil, &elements)
        write('<noembed', '</noembed>', attributes, &elements)
      end

      def plaintext(attributes = nil, &elements)
        write('<plaintext', '</plaintext>', attributes, &elements)
      end

      def rb(attributes = nil, &elements)
        write('<rb', '</rb>', attributes, &elements)
      end

      def rtc(attributes = nil, &elements)
        write('<rtc', '</rtc>', attributes, &elements)
      end

      def strike(attributes = nil, &elements)
        write('<strike', '</strike>', attributes, &elements)
      end

      def basefont(attributes = nil, &elements)
        write('<basefont', '</basefont>', attributes, &elements)
      end

      def big(attributes = nil, &elements)
        write('<big', '</big>', attributes, &elements)
      end

      def center(attributes = nil, &elements)
        write('<center', '</center>', attributes, &elements)
      end

      def nobr(attributes = nil, &elements)
        write('<nobr', '</nobr>', attributes, &elements)
      end

      def tt(attributes = nil, &elements)
        write('<tt', '</tt>', attributes, &elements)
      end
    end

    module HTMLHeadingElement
      def h1(attributes = nil, &elements)
        write('<h1', '</h1>', attributes, &elements)
      end

      def h2(attributes = nil, &elements)
        write('<h2', '</h2>', attributes, &elements)
      end

      def h3(attributes = nil, &elements)
        write('<h3', '</h3>', attributes, &elements)
      end

      def h4(attributes = nil, &elements)
        write('<h4', '</h4>', attributes, &elements)
      end

      def h5(attributes = nil, &elements)
        write('<h5', '</h5>', attributes, &elements)
      end

      def h6(attributes = nil, &elements)
        write('<h6', '</h6>', attributes, &elements)
      end
    end

    module HTMLParagraphElement
      def p(attributes = nil, &elements)
        write('<p', '</p>', attributes, &elements)
      end
    end

    module HTMLHRElement
      def hr(attributes = nil)
        # no child elements allowed and no closing tag
        write('<hr', '>', attributes)
      end
    end

    module HTMLPreElement
      def pre(attributes = nil, &elements)
        write('<pre', '</pre>', attributes, &elements)
      end

      def listing(attributes = nil, &elements)
        write('<listing', '</listing>', attributes, &elements)
      end

      def xmp(attributes = nil, &elements)
        write('<xmp', '</xmp>', attributes, &elements)
      end
    end

    module HTMLQuoteElement
      def blockquote(attributes = nil, &elements)
        write('<blockquote', '</blockquote>', attributes, &elements)
      end

      def q(attributes = nil, &elements)
        write('<q', '</q>', attributes, &elements)
      end
    end

    module HTMLOListElement
      def ol(attributes = nil, &elements)
        write('<ol', '</ol>', attributes, &elements)
      end
    end

    module HTMLUListElement
      def ul(attributes = nil, &elements)
        write('<ul', '</ul>', attributes, &elements)
      end
    end

    module HTMLMenuElement
      def menu(attributes = nil, &elements)
        write('<menu', '</menu>', attributes, &elements)
      end
    end

    module HTMLLIElement
      def li(attributes = nil, &elements)
        write('<li', '</li>', attributes, &elements)
      end
    end

    module HTMLDListElement
      def dl(attributes = nil, &elements)
        write('<dl', '</dl>', attributes, &elements)
      end
    end

    module HTMLDivElement
      def div(attributes = nil, &elements)
        write('<div', '</div>', attributes, &elements)
      end
    end

    module HTMLAnchorElement
      def a(attributes = nil, &elements)
        write('<a', '</a>', attributes, &elements)
      end
    end

    module HTMLDataElement
      def data(attributes = nil, &elements)
        write('<data', '</data>', attributes, &elements)
      end
    end

    module HTMLTimeElement
      def time(attributes = nil, &elements)
        write('<time', '</time>', attributes, &elements)
      end
    end

    module HTMLSpanElement
      def span(attributes = nil, &elements)
        write('<span', '</span>', attributes, &elements)
      end
    end

    module HTMLBRElement
      def br(attributes = nil)
        # no child elements allowed and no closing tag
        write('<br', '>', attributes)
      end
    end

    module HTMLModElement
      def ins(attributes = nil, &elements)
        write('<ins', '</ins>', attributes, &elements)
      end

      def del(attributes = nil, &elements)
        write('<del', '</del>', attributes, &elements)
      end
    end

    module HTMLPictureElement
      def picture(attributes = nil, &elements)
        write('<picture', '</picture>', attributes, &elements)
      end
    end

    module HTMLSourceElement
      def source(attributes = nil)
        # no child elements allowed and no closing tag
        write('<source', '>', attributes)
      end
    end

    module HTMLImageElement
      def img(attributes = nil)
        # no child elements allowed and no closing tag
        write('<img', '>', attributes)
      end
    end

    module HTMLIFrameElement
      def iframe(attributes = nil, &elements)
        write('<iframe', '</iframe>', attributes, &elements)
      end
    end

    module HTMLEmbedElement
      def embed(attributes = nil)
        # no child elements allowed and no closing tag
        write('<embed', '>', attributes)
      end
    end

    module HTMLObjectElement
      def object(attributes = nil, &elements)
        write('<object', '</object>', attributes, &elements)
      end
    end

    module HTMLVideoElement
      def video(attributes = nil, &elements)
        write('<video', '</video>', attributes, &elements)
      end
    end

    module HTMLAudioElement
      def audio(attributes = nil, &elements)
        write('<audio', '</audio>', attributes, &elements)
      end
    end

    module HTMLTrackElement
      def track(attributes = nil)
        # no child elements allowed and no closing tag
        write('<track', '>', attributes)
      end
    end

    module HTMLMapElement
      def map(attributes = nil, &elements)
        write('<map', '</map>', attributes, &elements)
      end
    end

    module HTMLAreaElement
      def area(attributes = nil)
        # no child elements allowed and no closing tag
        write('<area', '>', attributes)
      end
    end

    module HTMLTableElement
      def table(attributes = nil, &elements)
        write('<table', '</table>', attributes, &elements)
      end
    end

    module HTMLTableCaptionElement
      def caption(attributes = nil, &elements)
        write('<caption', '</caption>', attributes, &elements)
      end
    end

    module HTMLTableColElement
      def colgroup(attributes = nil, &elements)
        write('<colgroup', '</colgroup>', attributes, &elements)
      end

      def col(attributes = nil)
        # no child elements allowed and no closing tag
        write('<col', '>', attributes)
      end
    end

    module HTMLTableSectionElement
      def tbody(attributes = nil, &elements)
        write('<tbody', '</tbody>', attributes, &elements)
      end

      def thead(attributes = nil, &elements)
        write('<thead', '</thead>', attributes, &elements)
      end

      def tfoot(attributes = nil, &elements)
        write('<tfoot', '</tfoot>', attributes, &elements)
      end
    end

    module HTMLTableRowElement
      def tr(attributes = nil, &elements)
        write('<tr', '</tr>', attributes, &elements)
      end
    end

    module HTMLTableCellElement
      def td(attributes = nil, &elements)
        write('<td', '</td>', attributes, &elements)
      end

      def th(attributes = nil, &elements)
        write('<th', '</th>', attributes, &elements)
      end
    end

    module HTMLFormElement
      def form(attributes = nil, &elements)
        write('<form', '</form>', attributes, &elements)
      end
    end

    module HTMLLabelElement
      def label(attributes = nil, &elements)
        write('<label', '</label>', attributes, &elements)
      end
    end

    module HTMLInputElement
      def input(attributes = nil)
        # no child elements allowed and no closing tag
        write('<input', '>', attributes)
      end
    end

    module HTMLButtonElement
      def button(attributes = nil, &elements)
        write('<button', '</button>', attributes, &elements)
      end
    end

    module HTMLSelectElement
      def select(attributes = nil, &elements)
        write('<select', '</select>', attributes, &elements)
      end
    end

    module HTMLDataListElement
      def datalist(attributes = nil, &elements)
        write('<datalist', '</datalist>', attributes, &elements)
      end
    end

    module HTMLOptGroupElement
      def optgroup(attributes = nil, &elements)
        write('<optgroup', '</optgroup>', attributes, &elements)
      end
    end

    module HTMLOptionElement
      def option(attributes = nil, &elements)
        write('<option', '</option>', attributes, &elements)
      end
    end

    module HTMLTextAreaElement
      def textarea(attributes = nil, &elements)
        write('<textarea', '</textarea>', attributes, &elements)
      end
    end

    module HTMLOutputElement
      def output(attributes = nil, &elements)
        write('<output', '</output>', attributes, &elements)
      end
    end

    module HTMLProgressElement
      def progress(attributes = nil, &elements)
        write('<progress', '</progress>', attributes, &elements)
      end
    end

    module HTMLMeterElement
      def meter(attributes = nil, &elements)
        write('<meter', '</meter>', attributes, &elements)
      end
    end

    module HTMLFieldSetElement
      def fieldset(attributes = nil, &elements)
        write('<fieldset', '</fieldset>', attributes, &elements)
      end
    end

    module HTMLLegendElement
      def legend(attributes = nil, &elements)
        write('<legend', '</legend>', attributes, &elements)
      end
    end

    module HTMLDetailsElement
      def details(attributes = nil, &elements)
        write('<details', '</details>', attributes, &elements)
      end
    end

    module HTMLDialogElement
      def dialog(attributes = nil, &elements)
        write('<dialog', '</dialog>', attributes, &elements)
      end
    end

    module HTMLScriptElement
      def script(attributes = nil, &elements)
        write('<script', '</script>', attributes, &elements)
      end
    end

    module HTMLTemplateElement
      def template(attributes = nil, &elements)
        write('<template', '</template>', attributes, &elements)
      end
    end

    module HTMLSlotElement
      def slot(attributes = nil, &elements)
        write('<slot', '</slot>', attributes, &elements)
      end
    end

    module HTMLCanvasElement
      def canvas(attributes = nil, &elements)
        write('<canvas', '</canvas>', attributes, &elements)
      end
    end

    module HTMLUnknownElement
      def applet(attributes = nil, &elements)
        write('<applet', '</applet>', attributes, &elements)
      end

      def bgsound(attributes = nil, &elements)
        write('<bgsound', '</bgsound>', attributes, &elements)
      end

      def isindex(attributes = nil, &elements)
        write('<isindex', '</isindex>', attributes, &elements)
      end

      def keygen(attributes = nil, &elements)
        write('<keygen', '</keygen>', attributes, &elements)
      end

      def nextid(attributes = nil, &elements)
        write('<nextid', '</nextid>', attributes, &elements)
      end

      def blink(attributes = nil, &elements)
        write('<blink', '</blink>', attributes, &elements)
      end

      def multicol(attributes = nil, &elements)
        write('<multicol', '</multicol>', attributes, &elements)
      end

      def spacer(attributes = nil, &elements)
        write('<spacer', '</spacer>', attributes, &elements)
      end
    end

    module HTMLDirectoryElement
      def dir(attributes = nil, &elements)
        write('<dir', '</dir>', attributes, &elements)
      end
    end

    module HTMLFrameElement
      def frame(attributes = nil, &elements)
        write('<frame', '</frame>', attributes, &elements)
      end
    end

    module HTMLFrameSetElement
      def frameset(attributes = nil, &elements)
        write('<frameset', '</frameset>', attributes, &elements)
      end
    end

    module HTMLParamElement
      def param(attributes = nil, &elements)
        write('<param', '</param>', attributes, &elements)
      end
    end

    module HTMLFontElement
      def font(attributes = nil, &elements)
        write('<font', '</font>', attributes, &elements)
      end
    end

    module HTMLMarqueeElement
      def marquee(attributes = nil, &elements)
        write('<marquee', '</marquee>', attributes, &elements)
      end
    end

    module HTMLAllElements
      include HTMLHtmlElement
      include HTMLHeadElement
      include HTMLTitleElement
      include HTMLBaseElement
      include HTMLLinkElement
      include HTMLMetaElement
      include HTMLStyleElement
      include HTMLBodyElement
      include HTMLElement
      include HTMLHeadingElement
      include HTMLParagraphElement
      include HTMLHRElement
      include HTMLPreElement
      include HTMLQuoteElement
      include HTMLOListElement
      include HTMLUListElement
      include HTMLMenuElement
      include HTMLLIElement
      include HTMLDListElement
      include HTMLDivElement
      include HTMLAnchorElement
      include HTMLDataElement
      include HTMLTimeElement
      include HTMLSpanElement
      include HTMLBRElement
      include HTMLModElement
      include HTMLPictureElement
      include HTMLSourceElement
      include HTMLImageElement
      include HTMLIFrameElement
      include HTMLEmbedElement
      include HTMLObjectElement
      include HTMLVideoElement
      include HTMLAudioElement
      include HTMLTrackElement
      include HTMLMapElement
      include HTMLAreaElement
      include HTMLTableElement
      include HTMLTableCaptionElement
      include HTMLTableColElement
      include HTMLTableSectionElement
      include HTMLTableRowElement
      include HTMLTableCellElement
      include HTMLFormElement
      include HTMLLabelElement
      include HTMLInputElement
      include HTMLButtonElement
      include HTMLSelectElement
      include HTMLDataListElement
      include HTMLOptGroupElement
      include HTMLOptionElement
      include HTMLTextAreaElement
      include HTMLOutputElement
      include HTMLProgressElement
      include HTMLMeterElement
      include HTMLFieldSetElement
      include HTMLLegendElement
      include HTMLDetailsElement
      include HTMLDialogElement
      include HTMLScriptElement
      include HTMLTemplateElement
      include HTMLSlotElement
      include HTMLCanvasElement
      include HTMLUnknownElement
      include HTMLDirectoryElement
      include HTMLFrameElement
      include HTMLFrameSetElement
      include HTMLParamElement
      include HTMLFontElement
      include HTMLMarqueeElement
    end
  end
end