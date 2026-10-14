.class public Lf/a/b/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lf/a/b/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/b/a/a/a$a;

    invoke-direct {v0}, Lf/a/b/a/a/a$a;-><init>()V

    sput-object v0, Lf/a/b/a/a/a;->a:Lf/a/b/a/a/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lf/a/b/a/a/a;->a:Lf/a/b/a/a/b;

    invoke-interface {v0, p0}, Lf/a/b/a/a/b;->a(Ljava/lang/String;)V

    return-void
.end method
