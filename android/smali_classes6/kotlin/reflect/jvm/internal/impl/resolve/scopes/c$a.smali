.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;
.super Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/d;->c:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/d$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/d$a;->b()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/d$a;->d()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/d$a;->i()I

    move-result v0

    or-int/2addr v0, v2

    not-int v0, v0

    and-int/2addr v0, v1

    sput v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;->b:I

    return v0
.end method
