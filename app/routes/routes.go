package routes

import (
	config "godep/config"
	handler "godep/handler"
	middleware "godep/middleware"

	"github.com/labstack/echo/v4"
)

func serverRoutes(router *echo.Echo) {
	router.GET("/", handler.Init)
	router.GET("/healthz", handler.Health)
}

func ApiServer() error {
	e := echo.New()

	middleware.Service(e)

	serverRoutes(e)

	SERVER_PORT := config.GetEnv("PORT")
	err := e.Start(":" + SERVER_PORT)
	return err
}
