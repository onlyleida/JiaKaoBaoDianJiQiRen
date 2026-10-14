.class Lcn/mucang/android/core/config/s$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/config/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field static final a:Lcn/mucang/android/core/config/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/config/s;

    invoke-static {}, Lcn/mucang/android/core/config/s$b;->d()Lcn/mucang/android/core/config/s$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/core/config/s;-><init>(Lcn/mucang/android/core/config/s$b;)V

    sput-object v0, Lcn/mucang/android/core/config/s$d;->a:Lcn/mucang/android/core/config/s;

    return-void
.end method
