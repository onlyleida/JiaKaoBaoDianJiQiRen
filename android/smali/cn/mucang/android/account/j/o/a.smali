.class public final synthetic Lcn/mucang/android/account/j/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/j/j;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcn/mucang/android/account/data/LoginSmsModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/j/j;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/j/o/a;->a:Lcn/mucang/android/account/j/j;

    iput-object p2, p0, Lcn/mucang/android/account/j/o/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/mucang/android/account/j/o/a;->c:Lcn/mucang/android/account/data/LoginSmsModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/account/j/o/a;->a:Lcn/mucang/android/account/j/j;

    iget-object v1, p0, Lcn/mucang/android/account/j/o/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/mucang/android/account/j/o/a;->c:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/account/j/o/j;->x(Lcn/mucang/android/account/j/j;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method
