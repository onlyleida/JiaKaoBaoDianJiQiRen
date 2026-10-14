.class public final synthetic Lcn/mucang/android/account/j/o/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/j/l;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcn/mucang/android/account/data/LoginSmsModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/j/l;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/j/o/c;->a:Lcn/mucang/android/account/j/l;

    iput-object p2, p0, Lcn/mucang/android/account/j/o/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/mucang/android/account/j/o/c;->c:Lcn/mucang/android/account/data/LoginSmsModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/account/j/o/c;->a:Lcn/mucang/android/account/j/l;

    iget-object v1, p0, Lcn/mucang/android/account/j/o/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/mucang/android/account/j/o/c;->c:Lcn/mucang/android/account/data/LoginSmsModel;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/account/j/o/j;->z(Lcn/mucang/android/account/j/l;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method
