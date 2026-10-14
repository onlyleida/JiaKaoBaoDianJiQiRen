.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(ZILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->a:Z

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->b:I

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->c:Ljava/util/List;

    .line 5
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->d:I

    return-void
.end method
