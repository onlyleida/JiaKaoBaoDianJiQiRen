.class public Lcn/mucang/android/jiakaoyi/signal/com/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcn/mucang/android/jiakaoyi/signal/com/n;

.field public static final d:Lcn/mucang/android/jiakaoyi/signal/com/n;

.field public static final e:Lcn/mucang/android/jiakaoyi/signal/com/n;

.field public static final f:Lcn/mucang/android/jiakaoyi/signal/com/n;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/n;

    const-string v1, "192.168.118.1"

    const/16 v2, 0x90d

    const-string v3, "DTU 4G\u8def\u7531\u5668"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/n;->c:Lcn/mucang/android/jiakaoyi/signal/com/n;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/n;

    const-string v1, "192.168.118.30"

    const/16 v2, 0x1f98

    const-string v3, "\u4e3b\u63a7\u76d2"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/n;->d:Lcn/mucang/android/jiakaoyi/signal/com/n;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/n;

    const-string v1, "192.168.118.60"

    const-string v3, "Gps"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/n;->e:Lcn/mucang/android/jiakaoyi/signal/com/n;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/n;

    const-string v1, "192.168.118.116"

    const/16 v2, 0x1f96

    const-string v3, "AI"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/n;->f:Lcn/mucang/android/jiakaoyi/signal/com/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/n;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/n;->b:I

    return-void
.end method
