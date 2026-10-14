.class final Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/login/face/p;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$3;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/face/p;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$3;->invoke(Lcn/mucang/jiakaoyi/uilib/login/face/p;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/login/face/p;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$3;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    .line 3
    new-instance v1, Lorg/opencv/core/Mat;

    .line 4
    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/p;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 5
    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/p;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 6
    sget v4, Lorg/opencv/core/CvType;->CV_8UC3:I

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->K(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Mat;)V

    .line 8
    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/p;->b()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 9
    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/p;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 10
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->J(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Landroid/graphics/Bitmap;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$3;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->I(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/p;)V

    return-void
.end method
