.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/face/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/login/face/m;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/f;->a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/f;->b:Lcn/mucang/jiakaoyi/uilib/login/face/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/f;->a:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/f;->b:Lcn/mucang/jiakaoyi/uilib/login/face/m;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->V(Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V

    return-void
.end method
