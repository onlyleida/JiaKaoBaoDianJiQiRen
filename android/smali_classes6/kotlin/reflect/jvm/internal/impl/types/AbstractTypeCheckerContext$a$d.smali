.class public final Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a$d;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a$d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a$d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a$d;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$a;-><init>(Lkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext;->j()Lkotlin/reflect/jvm/internal/impl/types/model/m;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/m;->w(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method
