class ApplicationController < ActionController::Base

    # Definir idioma de la aplicación por el idioma del navegador
    def switch_locale(&action)
        I18n.with_locale(locale_from_header, &action)
    end

    private

    def locale_from_header
        request.env['HTTP_ACCEPT_LANGUAGE']&.scan(/^[a-z]{2}/)&.first
    end
end
