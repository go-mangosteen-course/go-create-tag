package controller

import "github.com/gin-gonic/gin"

type TagController struct {
}

func (ctrl *TagController) RegisterRoutes(rg *gin.RouterGroup) {
	v1 := rg.Group("/v1")
	v1.POST("/tags", ctrl.Create)
}

func (ctrl *TagController) Create(c *gin.Context) {
	panic("not implemented") // TODO: Implement
}

func (ctrl *TagController) Destroy(c *gin.Context) {
	panic("not implemented") // TODO: Implement
}

func (ctrl *TagController) Update(c *gin.Context) {
	panic("not implemented") // TODO: Implement
}

func (ctrl *TagController) Get(c *gin.Context) {
	panic("not implemented") // TODO: Implement
}

func (ctrl *TagController) GetPaged(c *gin.Context) {
	panic("not implemented") // TODO: Implement
}
