/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.chasen.crfpp;

public class Model {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public Model(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(Model obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        CRFPPJNI.delete_Model(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public String getTemplate() {
    return CRFPPJNI.Model_getTemplate(swigCPtr, this);
  }

  public Tagger createTagger() {
    long cPtr = CRFPPJNI.Model_createTagger(swigCPtr, this);
    return (cPtr == 0) ? null : new Tagger(cPtr, false);
  }

  public String what() {
    return CRFPPJNI.Model_what(swigCPtr, this);
  }

  public Model(String arg) {
    this(CRFPPJNI.new_Model(arg), true);
  }

}
