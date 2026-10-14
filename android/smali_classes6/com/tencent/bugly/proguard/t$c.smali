.class public final Lcom/tencent/bugly/proguard/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Z

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/bugly/proguard/t$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/bugly/proguard/t$c;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/tencent/bugly/proguard/t$c;->c:J

    .line 5
    iput-boolean p5, p0, Lcom/tencent/bugly/proguard/t$c;->d:Z

    .line 6
    iput-wide p6, p0, Lcom/tencent/bugly/proguard/t$c;->e:J

    .line 7
    iput-object p8, p0, Lcom/tencent/bugly/proguard/t$c;->f:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/tencent/bugly/proguard/t$c;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/t$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/t$c;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/t$c;->c:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/t$c;->d:Z

    return v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/t$c;->e:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t$c;->g:Ljava/lang/String;

    return-object v0
.end method
