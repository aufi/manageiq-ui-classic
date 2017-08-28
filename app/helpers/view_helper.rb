module ViewHelper
  extend ActionView::Context
  extend ActionView::Helpers::TagHelper
  extend ActionView::Helpers::TextHelper
  extend ActionView::Helpers::CaptureHelper
  extend ActionView::Helpers::OutputSafetyHelper

  MAX_NAME_LEN = 255
  MAX_DESC_LEN = 255
  MAX_HOSTNAME_LEN = 255

  # PDF page sizes
  PDF_PAGE_SIZES = {
    "a0"            => N_("A0 - 841mm x 1189mm"),
    "a1"            => N_("A1 - 594mm x 841mm"),
    "a2"            => N_("A2 - 420mm x 594mm"),
    "a3"            => N_("A3 - 297mm x 420mm"),
    "a4"            => N_("A4 - 210mm x 297mm (default)"),
    "US-Letter"     => N_("US Letter - 8.5in x 11.0in"),
    "US-Legal"      => N_("US Legal - 8.5in x 14.0in"),
    "US-Executive"  => N_("US Executive - 7.25in x 10.5in"),
    "US-Ledger"     => N_("US Ledger - 17.0in x 11.0in"),
    "US-Tabloid"    => N_("US Tabloid - 11.0in x 17.0in"),
    "US-Government" => N_("US Government - 8.0in x 11.0in"),
    "US-Statement"  => N_("US Statement - 5.5in x 8.5in"),
    "US-Folio"      => N_("US Folio - 8.5in x 13.0in")
  }.freeze

  # Choices for C&U last hour real time minutes back pulldown
  REALTIME_CHOICES = {
    10.minutes => N_("10 Minutes"),
    15.minutes => N_("15 Minutes"),
    30.minutes => N_("30 Minutes"),
    45.minutes => N_("45 Minutes"),
    1.hour     => N_("1 Hour")
  }.freeze

  # Choices for trend and C&U days back pulldowns
  WEEK_CHOICES = {
    7  => N_("1 Week"),
    14 => N_("2 Weeks"),
    21 => N_("3 Weeks"),
    28 => N_("4 Weeks")
  }.freeze

  FROM_YEARS = [
    N_('This Year'),
    N_('Last Year'),
    N_('2 Years Ago'),
    N_('3 Years Ago'),
    N_('4 Years Ago')
  ].freeze

  # FROM Date/Time expression atom selectors
  FROM_HOURS = [
    N_('This Hour'),
    N_('Last Hour'),
    N_('2 Hours Ago'),
    N_('3 Hours Ago'),
    N_('4 Hours Ago'),
    N_('5 Hours Ago'),
    N_('6 Hours Ago'),
    N_('7 Hours Ago'),
    N_('8 Hours Ago'),
    N_('9 Hours Ago'),
    N_('10 Hours Ago'),
    N_('11 Hours Ago'),
    N_('12 Hours Ago'),
    N_('13 Hours Ago'),
    N_('14 Hours Ago'),
    N_('15 Hours Ago'),
    N_('16 Hours Ago'),
    N_('17 Hours Ago'),
    N_('18 Hours Ago'),
    N_('19 Hours Ago'),
    N_('20 Hours Ago'),
    N_('21 Hours Ago'),
    N_('22 Hours Ago'),
    N_('23 Hours Ago')
  ].freeze

  class << self
    def concat_tag(*args, &block)
      concat content_tag(*args, &block)
    end
  end
end
