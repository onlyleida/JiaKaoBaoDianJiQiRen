.class public final Lkotlin/reflect/jvm/internal/impl/builtins/d;
.super Lkotlin/reflect/jvm/internal/impl/builtins/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/d$a;
    }
.end annotation


# static fields
.field public static final g:Lkotlin/reflect/jvm/internal/impl/builtins/d$a;

.field private static final h:Lkotlin/reflect/jvm/internal/impl/builtins/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;->g:Lkotlin/reflect/jvm/internal/impl/builtins/d$a;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;-><init>(ZILkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;->h:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v1, "DefaultBuiltIns"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->f(Z)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/o;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;-><init>(Z)V

    return-void
.end method

.method public static final synthetic D0()Lkotlin/reflect/jvm/internal/impl/builtins/d;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;->h:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    return-object v0
.end method

.method public static final E0()Lkotlin/reflect/jvm/internal/impl/builtins/d;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;->g:Lkotlin/reflect/jvm/internal/impl/builtins/d$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d$a;->a()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v0

    return-object v0
.end method
