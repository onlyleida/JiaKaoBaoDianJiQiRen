.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/face/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

.field public final synthetic b:Lorg/opencv/core/Rect;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->b:Lorg/opencv/core/Rect;

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->c:I

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->b:Lorg/opencv/core/Rect;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->c:I

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/e;->d:I

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->U(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;II)V

    return-void
.end method
