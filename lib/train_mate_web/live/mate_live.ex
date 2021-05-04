defmodule TrainMateWeb.MateLive do
  use TrainMateWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, %{game_name: "1862", section_name: "Teach"})}
  end

  def handle_event("section-change", %{"section_name" => section_name}, socket) do
    {:noreply, assign(socket, :section_name, section_name)}
  end
end
