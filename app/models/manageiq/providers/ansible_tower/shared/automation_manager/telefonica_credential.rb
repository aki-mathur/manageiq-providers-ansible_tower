module ManageIQ::Providers::AnsibleTower::Shared::AutomationManager::TelefonicaCredential
  COMMON_ATTRIBUTES = {
    :userid => {
      :label     => N_('Username'),
      :help_text => N_('The username to use to connect to Telefonica'),
      :required  => true
    },
    :password => {
      :type      => :password,
      :label     => N_('Password (API Key)'),
      :help_text => N_('The password or API key to use to connect to Telefonica'),
      :required  => true
    }
  }.freeze

  EXTRA_ATTRIBUTES = {
    :host => {
      :type       => :string,
      :label      => N_('Host (Authentication URL)'),
      :help_text  => N_('The host to authenticate with. For example, https://telefonica.business.com/v2.0'),
      :max_length => 1024,
      :required   => true
    },
    :project => {
      :type       => :string,
      :label      => N_('Project (Tenant Name)'),
      :help_text  => N_('This is the tenant name. This value is usually the same as the username'),
      :max_length => 100,
      :required   => true
    },
    :domain => {
      :type       => :string,
      :label      => N_('Domain Name'),
      :help_text  => N_('Telefonica domains define administrative boundaries. It is only needed for Keystone v3 authentication URLs'),
      :max_length => 100
    }
  }.freeze

  API_ATTRIBUTES = COMMON_ATTRIBUTES.merge(EXTRA_ATTRIBUTES).freeze

  API_OPTIONS = {
    :type       => 'cloud',
    :label      => N_('Telefonica'),
    :attributes => API_ATTRIBUTES
  }.freeze
  TOWER_KIND = 'telefonica'.freeze
end
