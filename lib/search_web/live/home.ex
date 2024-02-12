defmodule SearchWeb.Home do
  use SearchWeb, :live_view

  alias Search.Repo
  alias Search.Contents.Tag

  def render(assigns) do
    ~H"""
    <h1>Welcome to Phoenix!</h1>
    <form phx-submit="submit">
      <input type="text" name="name" value={@name} />
      <button type="submit">search</button>
    </form>
    <%= for tag <- @result do %>
      <p><%= tag.name %></p>
    <% end %>
    """
  end

  def mount(_params, _session, socket) do
    socket = assign(socket, name: "", result: [])
    {:ok, socket}
  end

  def handle_event("submit", %{"name" => name}, socket) do
    result = Repo.all(Tag)
    socket = assign(socket, name: name, result: result)
    {:noreply, socket}
  end
end
