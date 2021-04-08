defmodule TrainMateWeb.MateLive do
  use TrainMateWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"Rendering 1862 live view"
  end
end
