.class final Lcom/loc/eo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:J

.field c:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/loc/eo$a;->a:I

    iput-wide p2, p0, Lcom/loc/eo$a;->b:J

    iput-wide p4, p0, Lcom/loc/eo$a;->c:J

    return-void
.end method
