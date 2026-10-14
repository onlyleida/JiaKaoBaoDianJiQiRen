.class Lf/a/a/a/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lf/a/a/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf/a/a/a/h;-><init>(Lf/a/a/a/h$a;)V

    sput-object v0, Lf/a/a/a/h$b;->a:Lf/a/a/a/h;

    return-void
.end method

.method static synthetic a()Lf/a/a/a/h;
    .locals 1

    .line 1
    sget-object v0, Lf/a/a/a/h$b;->a:Lf/a/a/a/h;

    return-object v0
.end method
