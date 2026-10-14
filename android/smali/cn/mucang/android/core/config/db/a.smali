.class public Lcn/mucang/android/core/config/db/a;
.super Lcn/mucang/android/core/db/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/config/db/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "remote_config"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/core/db/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static G()Lcn/mucang/android/core/config/db/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/db/a$a;->a:Lcn/mucang/android/core/config/db/a;

    return-object v0
.end method
