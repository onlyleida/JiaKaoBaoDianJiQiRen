.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/e;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/e;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/e;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/e;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->p(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method
