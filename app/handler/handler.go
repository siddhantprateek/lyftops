package handler

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func Init(c echo.Context) error {
	return c.JSON(http.StatusOK, echo.Map{
		"message": "Welcome to GoDep Echo Server",
	})
}

func Health(c echo.Context) error {
	return c.JSON(http.StatusOK, echo.Map{
		"message": "Working route",
	})
}
