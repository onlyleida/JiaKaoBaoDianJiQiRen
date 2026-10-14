.class public final synthetic Lcn/mucang/android/account/activity/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/activity/ValidationActivity;

.field public final synthetic b:[Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;[Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/j1;->a:Lcn/mucang/android/account/activity/ValidationActivity;

    iput-object p2, p0, Lcn/mucang/android/account/activity/j1;->b:[Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/account/activity/j1;->a:Lcn/mucang/android/account/activity/ValidationActivity;

    iget-object v1, p0, Lcn/mucang/android/account/activity/j1;->b:[Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcn/mucang/android/account/activity/ValidationActivity;->O(Lcn/mucang/android/account/activity/ValidationActivity;[Landroid/widget/EditText;)V

    return-void
.end method
