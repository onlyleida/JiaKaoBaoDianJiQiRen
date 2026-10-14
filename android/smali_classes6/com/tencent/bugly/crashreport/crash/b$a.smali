.class abstract Lcom/tencent/bugly/crashreport/crash/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/crash/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/tencent/bugly/crashreport/crash/b$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b$a;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/b$a;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/bugly/crashreport/crash/b$a;->a:I

    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method abstract a()Z
.end method
