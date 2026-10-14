.class final Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$1;
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
        "Lorg/opencv/core/Mat;",
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
        "Lorg/opencv/core/Mat;"
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

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/opencv/core/Mat;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$1;->invoke(Lorg/opencv/core/Mat;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lorg/opencv/core/Mat;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->w(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$b;->a(Lorg/opencv/core/Mat;)V

    :goto_0
    return-void
.end method
