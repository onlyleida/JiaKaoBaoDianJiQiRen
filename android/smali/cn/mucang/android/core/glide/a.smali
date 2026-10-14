.class public Lcn/mucang/android/core/glide/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/core/glide/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcn/mucang/android/framework/core/R$id;->core__glide_view_tag:I

    invoke-static {v0}, Lcom/bumptech/glide/request/target/ViewTarget;->setTagId(I)V

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcn/mucang/android/core/glide/a;->a:Z

    return-void
.end method
