.class public final Lcn/mucang/android/core/identity/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/r/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J\u0008\u0010\u0010\u001a\u00020\u000bH\u0007J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/OaidStorage;",
        "Lcn/mucang/android/core/storage/Storage;",
        "()V",
        "cachedOaid",
        "",
        "saveCache",
        "savedMarkStorage",
        "Lcn/mucang/android/core/storage/InternalFileStorage;",
        "storage",
        "Lcn/mucang/android/core/storage/MultiStorage;",
        "clear",
        "",
        "get",
        "getLastTimeOaid",
        "isOaidDoneFetch",
        "",
        "markOaidFetchDone",
        "release",
        "save",
        "string",
        "setValueChangedListener",
        "l",
        "Lcn/mucang/android/core/storage/ValueChangedListener;",
        "valid",
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
.field public static final a:Lcn/mucang/android/core/identity/l;

.field private static final b:Lf/a/a/a/r/d;

.field private static final c:Lf/a/a/a/r/c;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcn/mucang/android/core/identity/l;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/l;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/l;->a:Lcn/mucang/android/core/identity/l;

    .line 1
    new-instance v0, Lf/a/a/a/r/d;

    .line 2
    new-instance v1, Lf/a/a/a/r/b;

    new-instance v2, Lf/a/a/a/r/c;

    const-string v3, "oaid"

    invoke-direct {v2, v3}, Lf/a/a/a/r/c;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5, v4}, Lf/a/a/a/r/b;-><init>(Lf/a/a/a/r/h;Lf/a/a/a/r/a;ILkotlin/jvm/internal/o;)V

    .line 3
    invoke-static {v1}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-direct {v0, v3, v1}, Lf/a/a/a/r/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcn/mucang/android/core/identity/l;->b:Lf/a/a/a/r/d;

    .line 5
    new-instance v0, Lf/a/a/a/r/c;

    const-string v1, "_oaid_saved_mark_"

    invoke-direct {v0, v1}, Lf/a/a/a/r/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/core/identity/l;->c:Lf/a/a/a/r/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/l;->c:Lf/a/a/a/r/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/a/r/c;->b(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/l;->b:Lf/a/a/a/r/d;

    invoke-virtual {v0}, Lf/a/a/a/r/d;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/l;->b:Lf/a/a/a/r/d;

    invoke-virtual {v0, p1}, Lf/a/a/a/r/d;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcn/mucang/android/core/identity/l;->d:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_2
    sget-object v0, Lcn/mucang/android/core/identity/l;->b:Lf/a/a/a/r/d;

    invoke-virtual {v0}, Lf/a/a/a/r/d;->get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/identity/l;->d:Ljava/lang/String;

    return-object v0
.end method
