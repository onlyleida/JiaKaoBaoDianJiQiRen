.class public abstract Landroidx/constraintlayout/motion/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:I = -0x1


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field protected d:I

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroidx/constraintlayout/motion/widget/d;->f:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->a:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/a/a/a/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Landroidx/constraintlayout/motion/widget/d;
.end method

.method public c(Landroidx/constraintlayout/motion/widget/d;)Landroidx/constraintlayout/motion/widget/d;
    .locals 1

    .line 1
    iget v0, p1, Landroidx/constraintlayout/motion/widget/d;->a:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->a:I

    .line 2
    iget v0, p1, Landroidx/constraintlayout/motion/widget/d;->b:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->b:I

    .line 3
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/d;->c:Ljava/lang/String;

    .line 4
    iget v0, p1, Landroidx/constraintlayout/motion/widget/d;->d:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->d:I

    .line 5
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/d;->b()Landroidx/constraintlayout/motion/widget/d;

    move-result-object v0

    return-object v0
.end method

.method abstract d(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract e(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method public f(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
