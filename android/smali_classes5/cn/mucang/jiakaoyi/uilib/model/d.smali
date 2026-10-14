.class public final synthetic Lcn/mucang/jiakaoyi/uilib/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/e;

.field public final synthetic b:Z

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/e;ZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/d;->a:Lcn/mucang/jiakaoyi/uilib/model/e;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/model/d;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/model/d;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/d;->a:Lcn/mucang/jiakaoyi/uilib/model/e;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/d;->b:Z

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/d;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/e;->b(ZLcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method
