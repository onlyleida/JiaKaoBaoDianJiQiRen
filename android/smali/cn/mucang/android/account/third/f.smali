.class public final synthetic Lcn/mucang/android/account/third/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

.field public final synthetic b:Lcn/mucang/android/account/third/u;

.field public final synthetic c:Lcn/mucang/android/account/i/a;

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/api/data/ThirdLoginRequest;Lcn/mucang/android/account/third/u;Lcn/mucang/android/account/i/a;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/third/f;->a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    iput-object p2, p0, Lcn/mucang/android/account/third/f;->b:Lcn/mucang/android/account/third/u;

    iput-object p3, p0, Lcn/mucang/android/account/third/f;->c:Lcn/mucang/android/account/i/a;

    iput-object p4, p0, Lcn/mucang/android/account/third/f;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/account/third/f;->a:Lcn/mucang/android/account/api/data/ThirdLoginRequest;

    iget-object v1, p0, Lcn/mucang/android/account/third/f;->b:Lcn/mucang/android/account/third/u;

    iget-object v2, p0, Lcn/mucang/android/account/third/f;->c:Lcn/mucang/android/account/i/a;

    iget-object v3, p0, Lcn/mucang/android/account/third/f;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/account/third/y;->n(Lcn/mucang/android/account/api/data/ThirdLoginRequest;Lcn/mucang/android/account/third/u;Lcn/mucang/android/account/i/a;Landroid/app/Activity;)V

    return-void
.end method
