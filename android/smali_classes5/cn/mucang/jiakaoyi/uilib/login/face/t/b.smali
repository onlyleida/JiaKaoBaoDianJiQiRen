.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/face/t/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/t/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/b;->a:Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/b;->a:Lcn/mucang/jiakaoyi/uilib/login/face/t/f;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/b;->b:I

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->e(Lcn/mucang/jiakaoyi/uilib/login/face/t/f;I)V

    return-void
.end method
