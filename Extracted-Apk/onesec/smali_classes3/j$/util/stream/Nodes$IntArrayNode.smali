.class Lj$/util/stream/Nodes$IntArrayNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Node$OfInt;


# instance fields
.field final array:[I

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    long-to-int p2, p1

    new-array p1, p2, [I

    iput-object p1, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    array-length p1, p1

    iput p1, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public final synthetic asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$asArray(Lj$/util/stream/Node$OfPrimitive;Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final asPrimitiveArray()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v0

    iget v2, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final copyInto(ILjava/lang/Object;)V
    .locals 3

    check-cast p2, [I

    .line 0
    iget-object v0, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final synthetic copyInto([Ljava/lang/Integer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$-CC;->$default$copyInto(Lj$/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public final bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$IntArrayNode;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public final count()J
    .locals 2

    iget v0, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$forEach(Lj$/util/stream/Node$OfInt;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final forEach(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lj$/util/function/IntConsumer;

    const/4 v0, 0x0

    .line 0
    :goto_0
    iget v1, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Lj$/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getChild(I)Lj$/util/stream/Node;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$IntArrayNode;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 3

    .line 0
    iget-object v0, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    .line 0
    invoke-static {v0, v2, v1}, Lj$/util/Spliterators;->spliterator([III)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 3

    .line 0
    iget-object v0, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    .line 0
    invoke-static {v0, v2, v1}, Lj$/util/Spliterators;->spliterator([III)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v1

    iget v2, p0, Lj$/util/stream/Nodes$IntArrayNode;->curSize:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lj$/util/stream/Nodes$IntArrayNode;->array:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "IntArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic truncate(JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node$OfInt;JJ)Lj$/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method
