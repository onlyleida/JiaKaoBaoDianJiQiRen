.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field public final synthetic b:Z

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;->b:Z

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->k(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
