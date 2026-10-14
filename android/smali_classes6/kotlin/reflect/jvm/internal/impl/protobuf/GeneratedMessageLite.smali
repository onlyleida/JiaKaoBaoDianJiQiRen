.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/a;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->parseUnknownField(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result p0

    return p0
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Generated message class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newRepeatedGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/n;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/n;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "*>;I",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 2
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    const/4 v11, 0x1

    move-object v7, v4

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/n;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/n;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/n;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "*>;I",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;Ljava/lang/Class;)V

    return-object v6
.end method

.method private static parseUnknownField(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/n;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;",
            ">;TMessageType;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/e;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/f;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->b(I)I

    move-result v0

    .line 3
    invoke-static {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->a(I)I

    move-result v1

    .line 4
    invoke-virtual {p4, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/n;I)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->l(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    iget-boolean v4, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->d:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->l(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p2, p5, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->P(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z

    move-result p0

    return p0

    :cond_3
    if-eqz v3, :cond_7

    .line 8
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->A()I

    move-result p3

    .line 9
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->j(I)I

    move-result p3

    .line 10
    iget-object p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object p4

    sget-object p5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    if-ne p4, p5, :cond_5

    .line 11
    :goto_2
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()I

    move-result p4

    if-lez p4, :cond_6

    .line 12
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->n()I

    move-result p4

    .line 13
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;

    move-result-object p5

    invoke-interface {p5, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;

    move-result-object p4

    if-nez p4, :cond_4

    return v2

    .line 14
    :cond_4
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p1, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p5, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$b;Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_5
    :goto_3
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()I

    move-result p4

    if-lez p4, :cond_6

    .line 16
    iget-object p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object p4

    invoke-static {p2, p4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->u(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p4

    .line 17
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p0, p5, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$b;Ljava/lang/Object;)V

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->i(I)V

    goto/16 :goto_6

    .line 19
    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$a;->a:[I

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->l()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_a

    const/4 p4, 0x2

    if-eq v0, p4, :cond_8

    .line 20
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-static {p2, p3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->u(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p2

    goto :goto_5

    .line 21
    :cond_8
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->n()I

    move-result p2

    .line 22
    iget-object p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;

    move-result-object p4

    invoke-interface {p4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;

    move-result-object p4

    if-nez p4, :cond_9

    .line 23
    invoke-virtual {p3, p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->o0(I)V

    .line 24
    invoke-virtual {p3, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->y0(I)V

    return v2

    :cond_9
    move-object p2, p4

    goto :goto_5

    :cond_a
    const/4 p3, 0x0

    .line 25
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->i()Z

    move-result p5

    if-nez p5, :cond_b

    .line 26
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p0, p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->h(Lkotlin/reflect/jvm/internal/impl/protobuf/g$b;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    if-eqz p5, :cond_b

    .line 27
    invoke-interface {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;

    move-result-object p3

    :cond_b
    if-nez p3, :cond_c

    .line 28
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;

    move-result-object p3

    .line 29
    :cond_c
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object p5

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    if-ne p5, v0, :cond_d

    .line 30
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d()I

    move-result p5

    invoke-virtual {p2, p5, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->r(ILkotlin/reflect/jvm/internal/impl/protobuf/n$a;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    goto :goto_4

    .line 31
    :cond_d
    invoke-virtual {p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->v(Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    .line 32
    :goto_4
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;->build()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object p2

    .line 33
    :goto_5
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->i()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 34
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$b;Ljava/lang/Object;)V

    goto :goto_6

    .line 35
    :cond_e
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->v(Lkotlin/reflect/jvm/internal/impl/protobuf/g$b;Ljava/lang/Object;)V

    :goto_6
    return v2
.end method


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end method

.method public getParserForType()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/n;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract synthetic getSerializedSize()I
.end method

.method public abstract synthetic isInitialized()Z
.end method

.method protected makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method public abstract synthetic newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;
.end method

.method protected parseUnknownField(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->P(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z

    move-result p1

    return p1
.end method

.method public abstract synthetic toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;
.end method

.method public abstract synthetic writeTo(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
