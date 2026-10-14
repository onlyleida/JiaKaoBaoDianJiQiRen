.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public e:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a:F

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->b:I

    const/high16 p1, 0x41600000    # 14.0f

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->e:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method
