.class public final synthetic Lcn/mucang/android/account/j/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcn/mucang/android/account/data/LoginSmsModel;

.field public final synthetic c:Lcn/mucang/android/account/j/j;

.field public final synthetic d:Lcn/mucang/android/account/j/l;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/j/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/mucang/android/account/j/g;->b:Lcn/mucang/android/account/data/LoginSmsModel;

    iput-object p3, p0, Lcn/mucang/android/account/j/g;->c:Lcn/mucang/android/account/j/j;

    iput-object p4, p0, Lcn/mucang/android/account/j/g;->d:Lcn/mucang/android/account/j/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/account/j/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/mucang/android/account/j/g;->b:Lcn/mucang/android/account/data/LoginSmsModel;

    iget-object v2, p0, Lcn/mucang/android/account/j/g;->c:Lcn/mucang/android/account/j/j;

    iget-object v3, p0, Lcn/mucang/android/account/j/g;->d:Lcn/mucang/android/account/j/l;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/account/j/m;->g(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    return-void
.end method
