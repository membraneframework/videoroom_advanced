defmodule VideoRoom.MixProject do
  use Mix.Project

  def project do
    [
      app: :membrane_videoroom_demo,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {VideoRoom.App, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:membrane_core, "~> 0.6.1"},
      {:membrane_file_plugin, "~> 0.5.0"},
      {:membrane_hackney_plugin, "~> 0.4.0"},
      {:websockex, "~> 0.4.2"},
      {:poison, "~> 3.1"},
      {:membrane_realtimer_plugin, "~> 0.1.0"},
      {:membrane_funnel_plugin, "~> 0.1.0"},
      {:membrane_h264_ffmpeg_plugin, "~> 0.7.0"},
      {:membrane_rtp_h264_plugin, "~> 0.4.0"},
      {:ex_sdp, "~> 0.2.0"},
      {:membrane_ice_plugin, "~> 0.3.1"},
      {:membrane_dtls_plugin, "~> 0.2.0"},
      {:membrane_rtp_plugin, "~> 0.5.0"},
      {:ex_libsrtp, "~> 0.1.0"},
      {:membrane_rtp_opus_plugin, "~> 0.2.0"},
      {:membrane_opus_plugin, "~> 0.2.0"},
      {:membrane_element_tee,
       github: "membraneframework/membrane_element_tee", branch: "fix-demands"},
      {:membrane_element_fake, "~> 0.4.0"},
      {:plug_cowboy, "~> 2.0"}
    ]
  end
end