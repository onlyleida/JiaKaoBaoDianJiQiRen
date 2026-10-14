.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    return-object v0
.end method
