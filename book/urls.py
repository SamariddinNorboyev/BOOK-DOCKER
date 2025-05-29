from rest_framework.routers import DefaultRouter
from book.views import BookModelViewSet

router = DefaultRouter()
router.register(r'users', BookModelViewSet)

urlpatterns = router.urls
