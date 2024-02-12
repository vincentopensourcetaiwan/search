defmodule SearchWeb.Home do
  use SearchWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Welcome to Phoenix!</h1>
    <form phx-submit="submit">
      <input type="text" name="name" value={@name} />
      <button type="submit">search</button>
    </form>
    """
  end

  def mount(_params, _session, socket) do
    socket = assign(socket, name: "")
    {:ok, socket}
  end

  def handle_event("submit", %{"name" => name}, socket) do
    IO.inspect(name)
    {:noreply, socket}
  end
end
