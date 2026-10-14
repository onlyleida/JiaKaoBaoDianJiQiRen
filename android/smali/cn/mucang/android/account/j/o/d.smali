.class public final synthetic Lcn/mucang/android/account/j/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcn/mucang/android/account/api/data/b;

.field public final synthetic c:Lcn/mucang/android/account/j/l;

.field public final synthetic d:Lcn/mucang/android/account/data/LoginSmsModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcn/mucang/android/account/api/data/b;Lcn/mucang/android/account/j/l;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/j/o/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/mucang/android/account/j/o/d;->b:Lcn/mucang/android/account/api/data/b;

    iput-object p3, p0, Lcn/mucang/android/account/j/o/d;->c:Lcn/mucang/android/account/j/l;

    iput-object p4, p0, Lcn/mucang/android/account/j/o/d;->d:Lcn/mucang/android/account/data/LoginSmsModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/account/j/o/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/mucang/android/account/j/o/d;->b:Lcn/mucang/android/account/api/data/b;

    iget-object v2, p0, Lcn/mucang/android/account/j/o/d;->c:Lcn/mucang/android/account/j/l;

    iget-object v3, p0, Lcn/mucang/android/account/j/o/d;->d:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/account/j/o/j;->A(Landroid/content/Context;Lcn/mucang/android/account/api/data/b;Lcn/mucang/android/account/j/l;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method
