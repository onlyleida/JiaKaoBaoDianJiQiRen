.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/face/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

.field public final synthetic b:Lorg/opencv/core/Rect;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/login/face/q;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->b:Lorg/opencv/core/Rect;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->c:Lcn/mucang/jiakaoyi/uilib/login/face/q;

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->d:I

    iput p5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->b:Lorg/opencv/core/Rect;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->c:Lcn/mucang/jiakaoyi/uilib/login/face/q;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->d:I

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/c;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->S(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V

    return-void
.end method
