.class public final Lcom/loc/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field private static volatile b:Lcom/loc/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/loc/ed;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/loc/dp;->b:Lcom/loc/ed;

    :cond_0
    return-void
.end method

.method public static b()Lcom/loc/ed;
    .locals 1

    sget-object v0, Lcom/loc/dp;->b:Lcom/loc/ed;

    return-object v0
.end method
