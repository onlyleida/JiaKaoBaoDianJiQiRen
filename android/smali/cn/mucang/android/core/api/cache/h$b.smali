.class Lcn/mucang/android/core/api/cache/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcn/mucang/android/core/api/cache/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/cache/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/api/cache/h;-><init>(Lcn/mucang/android/core/api/cache/h$a;)V

    sput-object v0, Lcn/mucang/android/core/api/cache/h$b;->a:Lcn/mucang/android/core/api/cache/h;

    return-void
.end method

.method static synthetic a()Lcn/mucang/android/core/api/cache/h;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/cache/h$b;->a:Lcn/mucang/android/core/api/cache/h;

    return-object v0
.end method
