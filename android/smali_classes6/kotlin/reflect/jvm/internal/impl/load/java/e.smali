.class public final Lkotlin/reflect/jvm/internal/impl/load/java/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/k;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-void
.end method
