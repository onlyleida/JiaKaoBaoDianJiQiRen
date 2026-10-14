.class Lcn/mucang/android/selectcity/b0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/selectcity/b0/a;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/selectcity/b0/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/selectcity/b0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/b0/a$b;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/selectcity/b0/a$b;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-static {p1}, Lcn/mucang/android/selectcity/b0/a;->z(Lcn/mucang/android/selectcity/b0/a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/selectcity/b0/a$b;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-static {p1}, Lcn/mucang/android/selectcity/b0/a;->z(Lcn/mucang/android/selectcity/b0/a;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
