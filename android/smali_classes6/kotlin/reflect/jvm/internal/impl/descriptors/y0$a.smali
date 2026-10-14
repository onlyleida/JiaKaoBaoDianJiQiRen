.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/y0$a;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/z0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lkotlin/reflect/jvm/internal/impl/descriptors/y0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y0$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/y0$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y0$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/y0$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "inherited"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
