.class public final Lcn/mucang/android/core/identity/cache/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/identity/cache/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy$Companion;",
        "",
        "()V",
        "ForceInvalidStrategy",
        "Lcn/mucang/android/core/identity/cache/ForceInvalidStrategy;",
        "getForceInvalidStrategy",
        "()Lcn/mucang/android/core/identity/cache/ForceInvalidStrategy;",
        "OneDayInvalidStrategy",
        "Lcn/mucang/android/core/identity/cache/OneDayInvalidStrategy;",
        "getOneDayInvalidStrategy",
        "()Lcn/mucang/android/core/identity/cache/OneDayInvalidStrategy;",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic a:Lcn/mucang/android/core/identity/cache/b$a;

.field private static final b:Lcn/mucang/android/core/identity/cache/d;

.field private static final c:Lcn/mucang/android/core/identity/cache/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/identity/cache/b$a;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/cache/b$a;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/cache/b$a;->a:Lcn/mucang/android/core/identity/cache/b$a;

    .line 1
    new-instance v0, Lcn/mucang/android/core/identity/cache/d;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/cache/d;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/cache/b$a;->b:Lcn/mucang/android/core/identity/cache/d;

    .line 2
    new-instance v0, Lcn/mucang/android/core/identity/cache/c;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/cache/c;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/cache/b$a;->c:Lcn/mucang/android/core/identity/cache/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/core/identity/cache/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/cache/b$a;->c:Lcn/mucang/android/core/identity/cache/c;

    return-object v0
.end method

.method public final b()Lcn/mucang/android/core/identity/cache/d;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/cache/b$a;->b:Lcn/mucang/android/core/identity/cache/d;

    return-object v0
.end method
