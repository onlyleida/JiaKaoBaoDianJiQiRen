.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/face/t/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/e;->a:Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/e;->a:Lcn/mucang/jiakaoyi/uilib/login/face/t/h;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/e;->b:I

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->h(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;I)V

    return-void
.end method
