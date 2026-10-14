.class public final Lcom/tencent/bugly/proguard/ak;
.super Lcom/tencent/bugly/proguard/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static d:[B


# instance fields
.field private a:B

.field private b:Ljava/lang/String;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/tencent/bugly/proguard/ak;->a:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->c:[B

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;[B)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-byte v0, p0, Lcom/tencent/bugly/proguard/ak;->a:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->c:[B

    .line 9
    iput-byte p1, p0, Lcom/tencent/bugly/proguard/ak;->a:B

    .line 10
    iput-object p2, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/tencent/bugly/proguard/ak;->c:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 3

    .line 5
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/ak;->a:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/ak;->a:B

    .line 6
    invoke-virtual {p1, v2, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/tencent/bugly/proguard/ak;->d:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    .line 8
    sput-object v0, Lcom/tencent/bugly/proguard/ak;->d:[B

    aput-byte v1, v0, v1

    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->c(IZ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ak;->c:[B

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/ak;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(BI)V

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a([BI)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
