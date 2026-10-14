.class public abstract Lcn/mucang/android/account/ui/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/EditText;

.field protected c:Landroid/widget/EditText;

.field protected d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract getCodeInput()Landroid/widget/EditText;
.end method

.method public abstract getOkBtn()Landroid/widget/Button;
.end method

.method public abstract getResendInput()Landroid/widget/Button;
.end method

.method public abstract getUsernameInput()Landroid/widget/EditText;
.end method

.method public abstract synthetic getView()Landroid/view/View;
.end method
