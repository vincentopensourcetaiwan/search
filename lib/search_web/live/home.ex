defmodule SearchWeb.Home do
  use SearchWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Welcome to Phoenix!</h1>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
