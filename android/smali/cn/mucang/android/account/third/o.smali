.class public final synthetic Lcn/mucang/android/account/third/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcn/mucang/android/account/i/a;

.field public final synthetic c:Lcn/mucang/android/account/third/u;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcn/mucang/android/account/i/a;Lcn/mucang/android/account/third/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/third/o;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/android/account/third/o;->b:Lcn/mucang/android/account/i/a;

    iput-object p3, p0, Lcn/mucang/android/account/third/o;->c:Lcn/mucang/android/account/third/u;

    iput-object p4, p0, Lcn/mucang/android/account/third/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/account/third/o;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/mucang/android/account/third/o;->b:Lcn/mucang/android/account/i/a;

    iget-object v2, p0, Lcn/mucang/android/account/third/o;->c:Lcn/mucang/android/account/third/u;

    iget-object v3, p0, Lcn/mucang/android/account/third/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/account/third/y;->w(Landroid/app/Activity;Lcn/mucang/android/account/i/a;Lcn/mucang/android/account/third/u;Ljava/lang/String;)V

    return-void
.end method
