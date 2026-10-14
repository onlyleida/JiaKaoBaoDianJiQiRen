.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->a:Ljava/util/List;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->d:F

    const/high16 p1, 0x42a00000    # 80.0f

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->b:F

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;->c:F

    return-void
.end method
